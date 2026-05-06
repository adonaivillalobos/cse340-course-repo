import db from './db.js';

// Get all projects
const getAllProjects = async () => {
  try {
    const query = `
      SELECT project_id, organization_id, project_title, project_des, project_loc, project_date
      FROM public.projects;
    `;

    const result = await db.query(query);
    return result.rows;

  } catch (error) {
    console.error('Error fetching projects:', error);
    throw error;
  }
};

export { getAllProjects };